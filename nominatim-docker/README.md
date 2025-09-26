# Nominatim Docker

100% working container for [Nominatim](https://github.com/openstreetmap/Nominatim).

![Nominatim Version](https://img.shields.io/badge/Nominatim%20Version-5.1.0-blue?style=flat-square) ![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/mediagis/nominatim-docker/ci.yml?branch=master&style=flat-square) ![Github All Contributors](https://img.shields.io/github/all-contributors/mediagis/nominatim-docker?style=flat-square) ![Docker Pulls](https://img.shields.io/docker/pulls/mediagis/nominatim?style=flat-square) ![Docker Image Size with architecture (latest by date/latest semver)](https://img.shields.io/docker/image-size/mediagis/nominatim?style=flat-square)

## Quick Start

The easiest way to use Nominatim Docker is by pulling the pre-built images from [Docker Hub](https://hub.docker.com/r/mediagis/nominatim).

To quickly get a Nominatim instance up and running with a small dataset (e.g., Monaco):

```sh
docker run -it \
  -e PBF_URL=https://download.geofabrik.de/europe/monaco-latest.osm.pbf \
  -p 8080:8080 \
  --name nominatim \
  mediagis/nominatim:5.1
```

After the import is complete, you can access the Nominatim API at `http://localhost:8080/search.php?q=avenue%20pasteur`.

## Accessing Different Versions

You can pull specific versions of the Nominatim Docker image by specifying the tag. For example, to use Nominatim version `5.1`:

```sh
docker pull mediagis/nominatim:5.1
```

For a list of available tags, please refer to the [Docker Hub page](https://hub.docker.com/r/mediagis/nominatim/tags).

## Security Information

For information regarding the latest supported security version and security policies for Nominatim, please refer to the official Nominatim security documentation: [Nominatim Security Policy](https://github.com/osm-search/Nominatim/blob/master/SECURITY.md).

## Detailed Usage and Configuration

For comprehensive instructions on advanced configuration, importing custom PBF files, persistent data, updating the database, PostgreSQL tuning, and more, please refer to the [detailed how-to guide](howto.md).

# Project goals and alternatives

It is the goal of this project to provide and easy to use container image that runs all services in a single container.
The downside is that this makes the Dockerfile quite complex and harder to modify.

If you're looking for a project which separates the individual concepts into separate containers, check out
https://github.com/smithmicro/n7m.

# Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://www.linkedin.com/in/winsent/"><img src="https://avatars.githubusercontent.com/u/2316328?v=4?s=100" width="100px;" alt="Andrew"/><br /><sub><b>Andrew</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=winsento" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=winsento" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/dlucia"><img src="https://avatars3.githubusercontent.com/u/1665623?v=4?s=100" width="100px;" alt="Donato Lucia"/><br /><sub><b>Donato Lucia</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=dlucia" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/geomark"><img src="https://avatars1.githubusercontent.com/u/1500692?v=4?s=100" width="100px;" alt="Georgios Markakis"/><br /><sub><b>Georgios Markakis</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=geomark" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/philipkozeny"><img src="https://avatars1.githubusercontent.com/u/16721635?v=4?s=100" width="100px;" alt="Philip Kozeny"/><br /><sub><b>Philip Kozeny</b></sub></a><br /><a href="#infra-philipkozeny" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=philipkozeny" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=philipkozeny" title="Tests">⚠️</a> <a href="https://github.com/mediagis/nominatim-docker/pulls?q=is%3Apr+reviewed-by%3Aphilipkozeny" title="Reviewed Pull Requests">👀</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=philipkozeny" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://www.therek.net/"><img src="https://avatars2.githubusercontent.com/u/89052?v=4?s=100" width="100px;" alt="Cezary Morga"/><br /><sub><b>Cezary Morga</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=therek" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/thomasnordquist"><img src="https://avatars0.githubusercontent.com/u/7721625?v=4?s=100" width="100px;" alt="Thomas Nordquist"/><br /><sub><b>Thomas Nordquist</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=thomasnordquist" title="Code">💻</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://keybase.io/davkorss"><img src="https://avatars0.githubusercontent.com/u/5597595?v=4?s=100" width="100px;" alt="Andrey Ruíz"/><br /><sub><b>Andrey Ruíz</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=davkorss" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/UntitleDude"><img src="https://avatars2.githubusercontent.com/u/14983691?v=4?s=100" width="100px;" alt="UntitleDude"/><br /><sub><b>UntitleDude</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=UntitleDude" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://www.linkedin.com/in/jmcker"><img src="https://avatars3.githubusercontent.com/u/25001741?v=4?s=100" width="100px;" alt="Jack McKernan"/><br /><sub><b>Jack McKernan</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=jmcker" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://twitter.com/mtmthemovie"><img src="https://avatars1.githubusercontent.com/u/3727288?v=4?s=100" width="100px;" alt="mtmail"/><br /><sub><b>mtmail</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=mtmail" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=mtmail" title="Code">💻</a> <a href="#question-mtmail" title="Answering Questions">💬</a> <a href="https://github.com/mediagis/nominatim-docker/pulls?q=is%3Apr+reviewed-by%3Amtmail" title="Reviewed Pull Requests">👀</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://angel.co/eSlider"><img src="https://avatars3.githubusercontent.com/u/1188335?v=4?s=100" width="100px;" alt="Andrey Oblivantsev"/><br /><sub><b>Andrey Oblivantsev</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=eSlider" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://www.linkedin.com/in/simoneromano92/"><img src="https://avatars2.githubusercontent.com/u/6860423?v=4?s=100" width="100px;" alt="Simone"/><br /><sub><b>Simone</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=sromano1992" title="Code">💻</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/DuncanMackintosh"><img src="https://avatars0.githubusercontent.com/u/4966417?v=4?s=100" width="100px;" alt="DuncanMackintosh"/><br /><sub><b>DuncanMackintosh</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=DuncanMackintosh" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=DuncanMackintosh" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="http://iiroalhonen.com"><img src="https://avatars2.githubusercontent.com/u/18322926?v=4?s=100" width="100px;" alt="Iiro Alhonen"/><br /><sub><b>Iiro Alhonen</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=Iikeli" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://www.ufoproger.ru"><img src="https://avatars3.githubusercontent.com/u/212711?v=4?s=100" width="100px;" alt="Mikhail Snetkov"/><br /><sub><b>Mikhail Snetkov</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=ufoproger" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/FritschAuctores"><img src="https://avatars2.githubusercontent.com/u/43264099?v=4?s=100" width="100px;" alt="FritschAuctores"/><br /><sub><b>FritschAuctores</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=FritschAuctores" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/rebos"><img src="https://avatars.githubusercontent.com/u/490798?v=4?s=100" width="100px;" alt="rebos"/><br /><sub><b>rebos</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=rebos" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://leonard.io/blog/"><img src="https://avatars.githubusercontent.com/u/151346?v=4?s=100" width="100px;" alt="Leonard Ehrenfried"/><br /><sub><b>Leonard Ehrenfried</b></sub></a><br /><a href="#infra-leonardehrenfried" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=leonardehrenfried" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=leonardehrenfried" title="Tests">⚠️</a> <a href="https://github.com/mediagis/nominatim-docker/pulls?q=is%3Apr+reviewed-by%3Aleonardehrenfried" title="Reviewed Pull Requests">👀</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=leonardehrenfried" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://roelandtn.frama.io/"><img src="https://avatars.githubusercontent.com/u/17683898?v=4?s=100" width="100px;" alt="Nicolas Roelandt"/><br /><sub><b>Nicolas Roelandt</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=Bakaniko" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=Bakaniko" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=Bakaniko" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/Sacerdoss"><img src="https://avatars.githubusercontent.com/u/22632241?v=4?s=100" width="100px;" alt="Sacerdoss"/><br /><sub><b>Sacerdoss</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=Sacerdoss" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/sake"><img src="https://avatars.githubusercontent.com/u/154311?v=4?s=100" width="100px;" alt="Tobias Wich"/><br /><sub><b>Tobias Wich</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=sake" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=sake" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/aclowkey"><img src="https://avatars.githubusercontent.com/u/2061017?v=4?s=100" width="100px;" alt="Alex Chaplianka"/><br /><sub><b>Alex Chaplianka</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=aclowkey" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/gmalenko"><img src="https://avatars.githubusercontent.com/u/6521413?v=4?s=100" width="100px;" alt="Idris Hayward"/><br /><sub><b>Idris Hayward</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=gmalenko" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/karlvr"><img src="https://avatars.githubusercontent.com/u/1086005?v=4?s=100" width="100px;" alt="Karl von Randow"/><br /><sub><b>Karl von Randow</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=karlvr" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/mlechner"><img src="https://avatars.githubusercontent.com/u/1194826?v=4?s=100" width="100px;" alt="Marco Lechner"/><br /><sub><b>Marco Lechner</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=mlechner" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/mattegawel"><img src="https://avatars.githubusercontent.com/u/14986712?v=4?s=100" width="100px;" alt="Mateusz Gaweł"/><br /><sub><b>Mateusz Gaweł</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=mattegawel" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="http://www.forum-software.org/"><img src="https://avatars.githubusercontent.com/u/1044941?v=4?s=100" width="100px;" alt="Nicolas Ternisien"/><br /><sub><b>Nicolas Ternisien</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=lastnico" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/oschlueter"><img src="https://avatars.githubusercontent.com/u/10252511?v=4?s=100" width="100px;" alt="oschlueter"/><br /><sub><b>oschlueter</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=oschlueter" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/timnon"><img src="https://avatars.githubusercontent.com/u/5597397?v=4?s=100" width="100px;" alt="Tim Nonner"/><br /><sub><b>Tim Nonner</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=timnon" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/thlor"><img src="https://avatars.githubusercontent.com/u/6570020?v=4?s=100" width="100px;" alt="thlor"/><br /><sub><b>thlor</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=thlor" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=thlor" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/mogita"><img src="https://avatars.githubusercontent.com/u/1173069?v=4?s=100" width="100px;" alt="Yun Wang"/><br /><sub><b>Yun Wang</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=mogita" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=mogita" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/Stefanic"><img src="https://avatars.githubusercontent.com/u/4499284?v=4?s=100" width="100px;" alt="Stefanic"/><br /><sub><b>Stefanic</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=Stefanic" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=Stefanic" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/xpoinsard"><img src="https://avatars.githubusercontent.com/u/6130463?v=4?s=100" width="100px;" alt="xpoinsard"/><br /><sub><b>xpoinsard</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=xpoinsard" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=xpoinsard" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/Bartizan"><img src="https://avatars.githubusercontent.com/u/6322553?v=4?s=100" width="100px;" alt="Bartizan"/><br /><sub><b>Bartizan</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=Bartizan" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=Bartizan" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=Bartizan" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/galewis2"><img src="https://avatars.githubusercontent.com/u/62433564?v=4?s=100" width="100px;" alt="galewis2"/><br /><sub><b>galewis2</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=galewis2" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/TurtIeSocks"><img src="https://avatars.githubusercontent.com/u/58572875?v=4?s=100" width="100px;" alt="Derick M."/><br /><sub><b>Derick M.</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=TurtIeSocks" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=TurtIeSocks" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=TurtIeSocks" title="Tests">⚠️</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/norcis"><img src="https://avatars.githubusercontent.com/u/1047487?v=4?s=100" width="100px;" alt="norcis"/><br /><sub><b>norcis</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=norcis" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="http://rapsody.com/"><img src="https://avatars.githubusercontent.com/u/7005?v=4?s=100" width="100px;" alt="SClo"/><br /><sub><b>SClo</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=sclo" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=sclo" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/poliquin"><img src="https://avatars.githubusercontent.com/u/360123?v=4?s=100" width="100px;" alt="Chris"/><br /><sub><b>Chris</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=poliquin" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=poliquin" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/iAlex97"><img src="https://avatars.githubusercontent.com/u/12383594?v=4?s=100" width="100px;" alt="iAlex97"/><br /><sub><b>iAlex97</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=iAlex97" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=iAlex97" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="16.66%"><a href="http://bugsquash.blogspot.com/"><img src="https://avatars.githubusercontent.com/u/95194?v=4?s=100" width="100px;" alt="Mauricio Scheffer"/><br /><sub><b>Mauricio Scheffer</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=mausch" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/anthropos9"><img src="https://avatars.githubusercontent.com/u/3867685?v=4?s=100" width="100px;" alt="Sean Dean"/><br /><sub><b>Sean Dean</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=anthropos9" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/pgassmann"><img src="https://avatars.githubusercontent.com/u/460192?v=4?s=100" width="100px;" alt="Philipp Gassmann"/><br /><sub><b>Philipp Gassmann</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=pgassmann" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=pgassmann" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=pgassmann" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/saddfox"><img src="https://avatars.githubusercontent.com/u/48035291?v=4?s=100" width="100px;" alt="saddfox"/><br /><sub><b>saddfox</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=saddfox" title="Documentation">📖</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=saddfox" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=saddfox" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/gsg-git"><img src="https://avatars.githubusercontent.com/u/92863111?v=4?s=100" width="100px;" alt="gsg-git"/><br /><sub><b>gsg-git</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=gsg-git" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/breunigs"><img src="https://avatars.githubusercontent.com/u/307954?v=4?s=100" width="100px;" alt="Stefan Breunig"/><br /><sub><b>Stefan Breunig</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=breunigs" title="Code">💻</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/carlomion"><img src="https://avatars.githubusercontent.com/u/161817799?v=4?s=100" width="100px;" alt="carlomion"/><br /><sub><b>carlomion</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=carlomion" title="Code">💻</a> <a href="#infra-carlomion" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/stouch"><img src="https://avatars.githubusercontent.com/u/17531455?v=4?s=100" width="100px;" alt="stouch"/><br /><sub><b>stouch</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=stouch" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=stouch" title="Documentation">📖</a> <a href="#infra-stouch" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="16.66%"><a href="https://github.com/tzezar"><img src="https://avatars.githubusercontent.com/u/163430081?v=4?s=100" width="100px;" alt="Sebastian Drozd"/><br /><sub><b>Sebastian Drozd</b></sub></a><br /><a href="https://github.com/mediagis/nominatim-docker/commits?author=tzezar" title="Code">💻</a> <a href="https://github.com/mediagis/nominatim-docker/commits?author=tzezar" title="Documentation">📖</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
