% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main_import_functions.R
\name{read_data}
\alias{read_data}
\title{Reads files (fwf or csv).}
\usage{
read_data(ft, i, metadata, dic_list = NULL, var_translator = NULL,
  root_path = NULL)
}
\arguments{
\item{ft}{file type. Indicates the subdataset within the dataset. For example: "pessoa" (person) or "domicílio" (household) data from the "CENSO" (Census). For a list of available ft for the period just type an invalid ft (Ex: ft = 'aasfasf')}

\item{i}{period. Normally period in YYY format.}

\item{metadata}{a data.frame containing one row per period and columns indicating: period, type (fwf, csv) download location, directory structure of the source data, hamonized file and dictionary names for subdataset (ft).}

\item{dic_list}{a list containing import dictionary data.frames for each period and subdataset (ft). Only necessary if data is in fwf format}

\item{var_translator}{(optional) a data.frame containing a subdataset (ft) specific renaming dictionary. Rows indicate the variable and the columuns the periods.}

\item{root_path}{(optional) a path to the directory where dataset was downloaded}
}
\description{
Main import function. Parses metadata and import diciontaries (in case of fwf files) to obtain import parameters for the desired subdataset and period. Then imports based on those parameters. Should not be aceessed directly, unless you are trying to extend the package, but rather though the wrapper funtions (read_CENSO, read_PNAD, etc).
}
\examples{
CSV data:
read_data('escola',2014,CensoEscolar_metadata)
read_data('escola',2014,CensoEscolar_metadata,CensoEscolar_escola_varname_harmonization)

FWF data: dictionary is mandatory
read_data('escola',2013,CensoEscolar_metadata,CensoEscolar_dics)
}

