.class public final synthetic Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->removeInactiveSelfManagedAssociations()V

    return-void
.end method
