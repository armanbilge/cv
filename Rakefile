require 'rake/clean'

CLEAN.include 'cv.aux'
CLEAN.include 'cv.log'
CLOBBER.add 'cv.pdf'

task :default => 'cv.pdf'

file 'cv.pdf' => 'cv.tex' do |t|
  sh "pdflatex #{t.source}"
end
