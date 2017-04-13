module AvaTax
  class Client
    module TaxRules 


      # Create a new tax rule
      # 
      # Create one or more new taxrule objects attached to this company.
      # A tax rule represents a custom taxability rule for a product or service sold by your company.
      # If you have obtained a custom tax ruling from an auditor that changes the behavior of certain goods or services
      # within certain taxing jurisdictions, or you have obtained special tax concessions for certain dates or locations,
      # you may wish to create a TaxRule object to override the AvaTax engine's default behavior in those circumstances.
      # 
     * @param TaxRuleModel[] $model The tax rule you wish to create.
      # @return TaxRuleModel[]
      def createTaxRules($companyId, $model)
        path = '/api/v2/companies/#{companyId}/taxrules';
        post (path)
      end


      # Delete a single tax rule
      # 
      # Mark the TaxRule identified by this URL as deleted.
      # 
      # @return ErrorDetail[]
      def deleteTaxRule($companyId, $id)
        path = '/api/v2/companies/#{companyId}/taxrules/#{id}';
        delete (path)
      end


      # Retrieve a single tax rule
      # 
      # Get the taxrule object identified by this URL.
      # A tax rule represents a custom taxability rule for a product or service sold by your company.
      # If you have obtained a custom tax ruling from an auditor that changes the behavior of certain goods or services
      # within certain taxing jurisdictions, or you have obtained special tax concessions for certain dates or locations,
      # you may wish to create a TaxRule object to override the AvaTax engine's default behavior in those circumstances.
      # 
      # @return TaxRuleModel
      def getTaxRule($companyId, $id)
        path = '/api/v2/companies/#{companyId}/taxrules/#{id}';
        get (path)
      end


      # Retrieve tax rules for this company
      # 
      # List all taxrule objects attached to this company.
      # A tax rule represents a custom taxability rule for a product or service sold by your company.
      # If you have obtained a custom tax ruling from an auditor that changes the behavior of certain goods or services
      # within certain taxing jurisdictions, or you have obtained special tax concessions for certain dates or locations,
      # you may wish to create a TaxRule object to override the AvaTax engine's default behavior in those circumstances.
      # 
      # Search for specific objects using the criteria in the `$filter` parameter; full documentation is available on [Filtering in REST](http://developer.avalara.com/avatax/filtering-in-rest/) .
      # Paginate your results using the `$top`, `$skip`, and `$orderby` parameters.
      # 
      # @param string $filter A filter statement to identify specific records to retrieve. For more information on filtering, see [Filtering in REST](http://developer.avalara.com/avatax/filtering-in-rest/) .
      # @param string $include A comma separated list of child objects to return underneath the primary object.
      # @param int $top If nonzero, return no more than this number of results. Used with $skip to provide pagination for large datasets.
      # @param int $skip If nonzero, skip this number of results before returning data. Used with $top to provide pagination for large datasets.
      # @param string $orderBy A comma separated list of sort statements in the format `(fieldname) [ASC|DESC]`, for example `id ASC`.
      # @return FetchResult
      def listTaxRules($companyId, $filter, $include, $top, $skip, $orderBy)
        path = '/api/v2/companies/#{companyId}/taxrules';
        get (path)
      end


      # Retrieve all tax rules
      # 
      # Get multiple taxrule objects across all companies.
      # A tax rule represents a custom taxability rule for a product or service sold by your company.
      # If you have obtained a custom tax ruling from an auditor that changes the behavior of certain goods or services
      # within certain taxing jurisdictions, or you have obtained special tax concessions for certain dates or locations,
      # you may wish to create a TaxRule object to override the AvaTax engine's default behavior in those circumstances.
      # 
      # Search for specific objects using the criteria in the `$filter` parameter; full documentation is available on [Filtering in REST](http://developer.avalara.com/avatax/filtering-in-rest/) .
      # Paginate your results using the `$top`, `$skip`, and `$orderby` parameters.
      # 
      # @param string $filter A filter statement to identify specific records to retrieve. For more information on filtering, see [Filtering in REST](http://developer.avalara.com/avatax/filtering-in-rest/) .
      # @param string $include A comma separated list of child objects to return underneath the primary object.
      # @param int $top If nonzero, return no more than this number of results. Used with $skip to provide pagination for large datasets.
      # @param int $skip If nonzero, skip this number of results before returning data. Used with $top to provide pagination for large datasets.
      # @param string $orderBy A comma separated list of sort statements in the format `(fieldname) [ASC|DESC]`, for example `id ASC`.
      # @return FetchResult
      def queryTaxRules($filter, $include, $top, $skip, $orderBy)
        path = '/api/v2/taxrules';
        get (path)
      end


      # Update a single tax rule
      # 
      # Replace the existing taxrule object at this URL with an updated object.
      # A tax rule represents a custom taxability rule for a product or service sold by your company.
      # If you have obtained a custom tax ruling from an auditor that changes the behavior of certain goods or services
      # within certain taxing jurisdictions, or you have obtained special tax concessions for certain dates or locations,
      # you may wish to create a TaxRule object to override the AvaTax engine's default behavior in those circumstances.
      # All data from the existing object will be replaced with data in the object you PUT. 
      # To set a field's value to null, you may either set its value to null or omit that field from the object you post.
      # 
     * @param TaxRuleModel $model The tax rule you wish to update.
      # @return TaxRuleModel
      def updateTaxRule($companyId, $id, $model)
        path = '/api/v2/companies/#{companyId}/taxrules/#{id}';
        put (path)
      end

    end
  end
end