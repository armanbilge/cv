require 'rake/clean'

CLEAN.include 'cv.aux'
CLEAN.include 'cv.log'
CLEAN.include 'cv.out'
CLOBBER << 'cv.pdf'

task :default => 'cv.pdf'

file 'cv.pdf' => ['cv.tex', 'tracv.cls'] do |t|
  2.times do
    sh "pdflatex #{t.source}"
  end
end
