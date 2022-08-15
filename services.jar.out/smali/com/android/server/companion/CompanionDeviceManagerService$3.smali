.class public Lcom/android/server/companion/CompanionDeviceManagerService$3;
.super Ljava/lang/Object;
.source "CompanionDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/companion/CompanionApplicationController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompanionApplicationBindingDied(ILjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monCompanionApplicationBindingDiedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onRebindCompanionApplicationTimeout(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$3;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monRebindCompanionApplicationTimeoutInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V

    return-void
.end method
