.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/PackageWatchdog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/PackageWatchdog;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/PackageWatchdog;->$r8$lambda$QLAW8O0nzCm0mV3t0kSm44xmdUU(Lcom/android/server/PackageWatchdog;Ljava/lang/String;)V

    return-void
.end method
