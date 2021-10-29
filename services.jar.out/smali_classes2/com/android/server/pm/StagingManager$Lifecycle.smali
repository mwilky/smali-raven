.class public final Lcom/android/server/pm/StagingManager$Lifecycle;
.super Lcom/android/server/SystemService;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/StagingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# static fields
.field private static sStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/StagingManager;->access$000(Lcom/android/server/pm/StagingManager;)V

    sget-object v0, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-static {v0}, Lcom/android/server/pm/StagingManager;->access$100(Lcom/android/server/pm/StagingManager;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method startService(Lcom/android/server/pm/StagingManager;)V
    .locals 1

    sput-object p1, Lcom/android/server/pm/StagingManager$Lifecycle;->sStagingManager:Lcom/android/server/pm/StagingManager;

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, p0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    return-void
.end method
