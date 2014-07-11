# require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    autoload :PostalAddress, 'mida_vocabulary/vocabularies/schemaorg/postaladdress'
    autoload :Organization, 'mida_vocabulary/vocabularies/schemaorg/organization'
    autoload :EducationalOrganization, 'mida_vocabulary/vocabularies/schemaorg/educationalorganization'
    autoload :Person, 'mida_vocabulary/vocabularies/schemaorg/person'
    autoload :ContactPoint, 'mida_vocabulary/vocabularies/schemaorg/contactpoint'
    autoload :Place, 'mida_vocabulary/vocabularies/schemaorg/place'
    autoload :Country, 'mida_vocabulary/vocabularies/schemaorg/country'
    autoload :Event, 'mida_vocabulary/vocabularies/schemaorg/event'

    # A person (alive, dead, undead, or fictional).
    class Person < Mida::Vocabulary
      itemtype %r{http://schema.org/Person}i
      include_vocabulary Mida::SchemaOrg::Thing

      # An additional name for a Person, can be used for a middle name.
      has_many 'additionalName'

      # Physical address of the item.
      has_many 'address' do
        extract Mida::SchemaOrg::PostalAddress
        extract Mida::DataType::Text
      end

      # An organization that this person is affiliated with. For example, a school/university, a club, or a team.
      has_many 'affiliation' do
        extract Mida::SchemaOrg::Organization
        extract Mida::DataType::Text
      end

      # An educational organizations that the person is an alumni of.
      has_many 'alumniOf' do
        extract Mida::SchemaOrg::EducationalOrganization
        extract Mida::DataType::Text
      end

      # Awards won by this person or for this creative work.
      has_many 'awards'

      # Date of birth.
      has_many 'birthDate' do
        extract Mida::DataType::ISO8601Date
      end

      # A child of the person.
      has_many 'children' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # A colleague of the person.
      has_many 'colleagues' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # A contact point for a person or organization.
      has_many 'contactPoints' do
        extract Mida::SchemaOrg::ContactPoint
        extract Mida::DataType::Text
      end

      # Date of death.
      has_many 'deathDate' do
        extract Mida::DataType::ISO8601Date
      end

      # Email address.
      has_many 'email'

      # Family name. In the U.S., the last name of an Person. This can be used along with givenName instead of the Name property.
      has_many 'familyName'

      # The fax number.
      has_many 'faxNumber'

      # The most generic uni-directional social relation.
      has_many 'follows' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # Gender of the person.
      has_many 'gender'

      # Given name. In the U.S., the first name of a Person. This can be used along with familyName instead of the Name property.
      has_many 'givenName'

      # A contact location for a person's residence.
      has_many 'homeLocation' do
        extract Mida::SchemaOrg::ContactPoint
        extract Mida::SchemaOrg::Place
        extract Mida::DataType::Text
      end

      # An honorific prefix preceding a Person's name such as Dr/Mrs/Mr.
      has_many 'honorificPrefix'

      # An honorific suffix preceding a Person's name such as M.D. /PhD/MSCSW.
      has_many 'honorificSuffix'

      # A count of a specific user interactions with this item - for example, 20 UserLikes, 5 UserComments, or 300 UserDownloads. The user interaction type should be one of the sub types of UserInteraction.
      has_many 'interactionCount'

      # The job title of the person (for example, Financial Manager).
      has_many 'jobTitle'

      # The most generic bi-directional social/work relation.
      has_many 'knows' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # An organization to which the person belongs.
      has_many 'memberOf' do
        extract Mida::SchemaOrg::Organization
        extract Mida::DataType::Text
      end

      # Nationality of the person.
      has_many 'nationality' do
        extract Mida::SchemaOrg::Country
        extract Mida::DataType::Text
      end

      # A parents of the person.
      has_many 'parents' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # Event that this person is a performer or participant in.
      has_many 'performerIn' do
        extract Mida::SchemaOrg::Event
        extract Mida::DataType::Text
      end

      # The most generic familial relation.
      has_many 'relatedTo' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # A sibling of the person.
      has_many 'siblings' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # The person's spouse.
      has_many 'spouse' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # The telephone number.
      has_many 'telephone'

      # A contact location for a person's place of work.
      has_many 'workLocation' do
        extract Mida::SchemaOrg::ContactPoint
        extract Mida::SchemaOrg::Place
        extract Mida::DataType::Text
      end

      # Organizations that the person works for.
      has_many 'worksFor' do
        extract Mida::SchemaOrg::Organization
        extract Mida::DataType::Text
      end
    end

  end
end
