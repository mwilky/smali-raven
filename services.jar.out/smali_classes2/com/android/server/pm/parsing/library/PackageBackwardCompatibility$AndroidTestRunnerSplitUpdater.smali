.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidTestRunnerSplitUpdater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .locals 2

    const-string v0, "android.test.runner"

    const-string v1, "android.test.mock"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;->prefixImplicitDependency(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
