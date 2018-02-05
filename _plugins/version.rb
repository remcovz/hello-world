module Jekyll
  class VersionReporter < Generator
    safe true

    def generate(site)
      File.open(File.join(site.source, 'version.html'), 'w') do |f|
        f.write(generate_report(site))
      end
    end

    private

    def generate_report(site)
      "Site generated with Jekyll version: #{Jekyll::VERSION}"
    end

  end
end
