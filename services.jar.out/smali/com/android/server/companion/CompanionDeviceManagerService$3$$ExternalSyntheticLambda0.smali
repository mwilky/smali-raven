.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService$3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$3;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService$3;

    check-cast p1, Landroid/companion/Association;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$3;->lambda$onPackageModified$2$CompanionDeviceManagerService$3(Landroid/companion/Association;)V

    return-void
.end method
