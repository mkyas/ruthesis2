%% This code is distributed under the CC-BY 4.0 license
%% Details at LICENSE
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ruthesis2}[2023/03/16 Reykjavik University Thesis 2]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass{memoir}

% Make sure we can use UTF8 for all documents
\RequirePackage{ifluatex}
\ifluatex\relax\else\PassOptionsToPackage{utf8}{inputenc}\RequirePackage{inputenc}\fi

% STIX2 Font
\RequirePackage{stix2}
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{fontenc}

% Provide commands for referencing web resources.
\RequirePackage{url}
\RequirePackage{doi}
\RequirePackage{orcidlink}
