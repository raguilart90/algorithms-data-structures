# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :test, :cli => '--use-color --runner=c --verbose=important-only' do
  # Watch all exercise files and run their respective test
  # watch(src/[chapter]/[section]/[exercise]) { run test/[chapter]/[section]/[exercise]_test.rb}
  watch(%r{^src/(.+)/(.+)/(.+)\.rb$}) { |m| "test/#{m[1]}/#{m[2]}/#{m[3]}_test.rb" }
  # watch(src/*.rb) and run test/*_test.rb
  watch(%r{^src/([^/]+)\.rb$}) { |m| "test/#{m[1]}_test.rb" }

  # Watch all tests
  watch(%r{^test/.+_test\.rb$})

  #Watch the test helper, and if modified, run all tests
  watch('test/test_helper.rb') { "test" }

  # Watch any test helpers for each chapter
  # watch(test/[chapter|section]+/*_helper.rb) { run test/[chapter]/**/* files}
  watch(%r{^test/(.+)/.+_helper\.rb$}) { |m| "test/#{m[1]}" }

  # Watch the utils directory, and if modified run all tests
  #noinspection RubyLiteralArrayInspection
  watch(%r{^src/utils/(.+)\.rb$}) { |m|
    ["test/utils/#{m[1]}_test.rb",
     "test/chapter_1",
     "test/chapter_2",
     "test/chapter_3",
     "test/chapter_4",
     "test/chapter_5",
     "test/chapter_6"]
  }

end