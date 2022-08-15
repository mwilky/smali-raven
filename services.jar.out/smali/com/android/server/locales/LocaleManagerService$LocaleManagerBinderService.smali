.class public final Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;
.super Landroid/app/ILocaleManager$Stub;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocaleManagerBinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-direct {p0}, Landroid/app/ILocaleManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    return-void
.end method


# virtual methods
.method public getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public getSystemLocales()Landroid/os/LocaleList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerService;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/locales/LocaleManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {v1}, Lcom/android/server/locales/LocaleManagerService;->-$$Nest$fgetmBinderService(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locales/LocaleManagerShellCommand;-><init>(Landroid/app/ILocaleManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V

    return-void
.end method
