require 'rake/clean'

CLEAN.include '*'
CLEAN.exclude 'Rakefile'
CLEAN.exclude 'cv.tex'
CLEAN.exclude 'cv.pdf'
CLOBBER.add 'cv.pdf'

task :default => 'cv.pdf'

file 'cv.pdf' => 'cv.tex' do |t|
  sh "pdflatex #{t.source}"
end
