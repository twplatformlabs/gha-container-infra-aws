#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec gha-container-infra-aws terraform version"
  [[ "${output}" =~ "1.8" ]]
}

@test "tflint version" {
  run bash -c "docker exec gha-container-infra-aws tflint --version"
  [[ "${output}" =~ "0.51" ]]
}

@test "python3 version" {
  run bash -c "docker exec gha-container-infra-aws python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "awscli version" {
  run bash -c "docker exec gha-container-infra-aws aws --version"
  [[ "${output}" =~ "1.32" ]]
}

@test "bats version" {
  run bash -c "docker exec gha-container-infra-aws bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "ruby version" {
  run bash -c "docker exec gha-container-infra-aws ruby -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "awspec version" {
  run bash -c "docker exec gha-container-infra-aws awspec -v"
  [[ "${output}" =~ "1.30" ]]
}

@test "inspec version" {
  run bash -c "docker exec gha-container-infra-aws inspec -v"
  [[ "${output}" =~ "5.22" ]]
}

@test "trivy version" {
  run bash -c "docker exec gha-container-infra-aws trivy --version"
  [[ "${output}" =~ "0.51" ]]
}

@test "checkov version" {
  run bash -c "docker exec gha-container-infra-aws checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "shasum version" {
  run bash -c "docker exec gha-container-infra-aws shasum --version"
  [[ "${output}" =~ "6." ]]
}

@test "cosign version" {
  run bash -c "docker exec gha-container-infra-aws cosign version"
  [[ "${output}" =~ "2.2" ]]
}
