import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["human", "orc", "dwarf", "prelf", "undead", "goblin", "halfling"]

  connect() {
    // console.log("hide-view controller connected");
  }

  human() {
      const teamSelected = this.humanTarget
      const teams = Array.from(this.humanTarget.parentNode.children);
      teams.forEach((team) => {
        team.classList.add("d-none")
      });
      teamSelected.classList.remove("d-none")
  }
  orc() {
    const teamSelected = this.orcTarget
    const teams = Array.from(this.orcTarget.parentNode.children);
    teams.forEach((team) => {
      team.classList.add("d-none")
    });
    teamSelected.classList.remove("d-none")
  }
  dwarf() {
    const teamSelected = this.dwarfTarget
    const teams = Array.from(this.dwarfTarget.parentNode.children);
    teams.forEach((team) => {
      team.classList.add("d-none")
    });
    teamSelected.classList.remove("d-none")
  }
  prelf() {
    const teamSelected = this.prelfTarget
    const teams = Array.from(this.prelfTarget.parentNode.children);
    teams.forEach((team) => {
      team.classList.add("d-none")
    });
    teamSelected.classList.remove("d-none")
  }
  undead() {
    const teamSelected = this.undeadTarget
    const teams = Array.from(this.undeadTarget.parentNode.children);
    teams.forEach((team) => {
      team.classList.add("d-none")
    });
    teamSelected.classList.remove("d-none")
  }
  goblin() {
    const teamSelected = this.goblinTarget
    const teams = Array.from(this.goblinTarget.parentNode.children);
    teams.forEach((team) => {
      team.classList.add("d-none")
    });
    teamSelected.classList.remove("d-none")
  }
  halfling() {
    const teamSelected = this.halflingTarget
    const teams = Array.from(this.halflingTarget.parentNode.children);
    teams.forEach((team) => {
      team.classList.add("d-none")
    });
    teamSelected.classList.remove("d-none")
  }
}
