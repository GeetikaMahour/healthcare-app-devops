# HealthConnect DevOps

Healthcare appointment & consultation app — built for ASSD Assignment 2
(DevOps Pipeline, Agile-in-Jira simulation, and Agile+DevOps integration).

## Structure
- `index.html` — the HealthConnect demo app (patient portal: search doctors, appointments, medical history)
- `tests/smoke-test.sh` — smoke tests the CI pipeline runs on every push/PR
- `.github/workflows/ci.yml` — **Q1**: Continuous Integration pipeline
- `.github/workflows/cd.yml` — **Q3**: Continuous Deployment pipeline, triggered only after CI passes, linked to Jira issue IDs (e.g. `HC-4`) in commit messages
- `jira/` — **Q2**: exported structure of the simulated Jira project (epics, backlog, sprints, board state)

## Jira ↔ GitHub link convention
Every commit that implements a user story includes its Jira ID, e.g.:
```
git commit -m "HC-4 Book Appointment: added slot confirmation"
```
The CD workflow reads this from the latest commit and logs which Agile work item triggered the deployment.
