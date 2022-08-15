.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$StagedSession$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->$r8$lambda$VyybwOQlIa01qyiNP-jTe4J09wE(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method
