.class public final synthetic Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ComputerEngine$Settings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ComputerEngine$Settings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ComputerEngine$Settings;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/ComputerEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/ComputerEngine$Settings;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComputerEngine$Settings;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    return-object p0
.end method
