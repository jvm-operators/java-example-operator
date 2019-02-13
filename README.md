# my-new-operator

[![Build status](https://travis-ci.org/acme.io/my-new-operator.svg?branch=master)](https://travis-ci.org/acme.io/my-new-operator)
[![License](https://img.shields.io/badge/license-Apache--2.0-blue.svg)](http://www.apache.org/licenses/LICENSE-2.0)

`{ConfigMap|CRD}`-based approach for managing the X in Kubernetes and OpenShift.

This operator uses [abstract-operator](https://github.com/jvm-operators/abstract-operator) library.

# Build

```bash
make build
```

# Quick Start

Run the `my-new-operator` deployment:
```bash
kubectl create -f manifest/operator.yaml
```

Create new ConfigMap from the prepared example:

```bash
kubectl create -f examples/cm.yaml
```


For deployment on OpenShift use the same commands as above, but with `oc` instead of `kubectl`.


This operator can also work with CRDs. For OpenShift, we are assuming the admin user is logged in (`oc login -u system:admin`)
and you have switched the project to `"default"` (`oc project default`).

you can install the operator with:

```bash
kubectl create -f manifest/operator-crd.yaml
```

and then create the Spark clusters by creating the custom resources (CR).

```bash
kubectl create sparkcluster -f examples/cr.yaml
```

# Development

```bash
make devel
```

This will build the image and deploys the operator into OpenShift. It assumes the `oc` on `PATH`.