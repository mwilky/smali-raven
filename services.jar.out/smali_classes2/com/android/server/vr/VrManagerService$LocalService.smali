.class public final Lcom/android/server/vr/VrManagerService$LocalService;
.super Lcom/android/server/vr/VrManagerInternal;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$LocalService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$maddPersistentStateCallback(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    return-void
.end method

.method public hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$mhasVrPackage(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I

    move-result p0

    return p0
.end method

.method public isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/vr/VrManagerService;->-$$Nest$misCurrentVrListener(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onScreenStateChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {p0, p1}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetScreenOn(Lcom/android/server/vr/VrManagerService;Z)V

    return-void
.end method

.method public setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->-$$Nest$msetVrMode(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    return-void
.end method
