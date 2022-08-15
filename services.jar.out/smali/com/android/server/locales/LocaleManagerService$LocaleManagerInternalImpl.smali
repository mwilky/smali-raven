.class public final Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;
.super Lcom/android/server/locales/LocaleManagerInternal;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocaleManagerInternalImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    return-void
.end method


# virtual methods
.method public final checkCallerIsSystem()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not system."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBackupPayload(I)[B
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->checkCallerIsSystem()V

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {p0}, Lcom/android/server/locales/LocaleManagerService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0
.end method

.method public stageAndApplyRestoredPayload([BI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {p0}, Lcom/android/server/locales/LocaleManagerService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->stageAndApplyRestoredPayload([BI)V

    return-void
.end method
