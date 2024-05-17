#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec cgha-container-infra-aws-image terraform version"
  [[ "${output}" =~ "1.8" ]]
}

@test "tflint version" {
  run bash -c "docker exec cgha-container-infra-aws-image tflint --version"
  [[ "${output}" =~ "0.51" ]]
}

@test "python3 version" {
  run bash -c "docker exec cgha-container-infra-aws-image python -V"
  [[ "${output}" =~ "3.11" ]]
}

@test "awscli version" {
  run bash -c "docker exec cgha-container-infra-aws-image aws --version"
  [[ "${output}" =~ "1.32" ]]
}

@test "bats version" {
  run bash -c "docker exec cgha-container-infra-aws-image bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "ruby version" {
  run bash -c "docker exec cgha-container-infra-aws-image ruby -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "awspec version" {
  run bash -c "docker exec cgha-container-infra-aws-image awspec -v"
  [[ "${output}" =~ "1.30" ]]
}

@test "inspec version" {
  run bash -c "docker exec cgha-container-infra-aws-image inspec -v"
  [[ "${output}" =~ "5.22" ]]
}

@test "trivy version" {
  run bash -c "docker exec cgha-container-infra-aws-image trivy --version"
  [[ "${output}" =~ "0.51" ]]
}

@test "checkov version" {
  run bash -c "docker exec cgha-container-infra-aws-image checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "shasum version" {
  run bash -c "docker exec cgha-container-infra-aws-image shasum --version"
  [[ "${output}" =~ "6." ]]
}

@test "cosign version" {
  run bash -c "docker exec cgha-container-infra-aws-image cosign version"
  [[ "${output}" =~ "2.2" ]]
}
