using System.ComponentModel.DataAnnotations;

namespace JobPortal.Common
{
    /// <summary>
    /// Custom validation attribute to ensure that the maximum salary is greater than the minimum salary.
    /// </summary>
    public class SalaryRangeAttribute : ValidationAttribute
    {
        // Stores the name of the property representing the minimum salary
        private readonly string _minSalaryPropertyName;

        /// <summary>
        /// Constructor that initializes the attribute with the property name of the minimum salary.
        /// </summary>
        /// <param name="minSalaryPropertyName">The name of the property representing the minimum salary.</param>
        public SalaryRangeAttribute(string minSalaryPropertyName)
        {
            _minSalaryPropertyName = minSalaryPropertyName;
        }

        /// <summary>
        /// Validates whether the maximum salary is greater than the minimum salary.
        /// </summary>
        /// <param name="value">The value of the property being validated (maximum salary).</param>
        /// <param name="validationContext">The context for the validation, including the object instance and metadata.</param>
        /// <returns>ValidationResult indicating success or failure with an error message.</returns>
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            // Retrieve the properties based on their names
            var maxSalaryProperty = validationContext.ObjectType.GetProperty(validationContext.MemberName);
            var minSalaryProperty = validationContext.ObjectType.GetProperty(_minSalaryPropertyName);

            // Ensure both properties exist in the object
            if (maxSalaryProperty != null && minSalaryProperty != null)
            {
                // Get the values of maxSalary and minSalary from the object instance
                var maxSalaryValue = maxSalaryProperty.GetValue(validationContext.ObjectInstance, null);
                var minSalaryValue = minSalaryProperty.GetValue(validationContext.ObjectInstance, null);

                // Validate that both salary values are not null and that max salary is greater than min salary
                if (maxSalaryValue != null && minSalaryValue != null && (decimal)maxSalaryValue <= (decimal)minSalaryValue)
                {
                    return new ValidationResult("Max salary must be greater than Min salary.");
                }
            }

            // If validation passes, return success
            return ValidationResult.Success;
        }
    }
}
