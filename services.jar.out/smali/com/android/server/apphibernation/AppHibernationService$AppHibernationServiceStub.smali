.class final Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;
.super Landroid/apphibernation/IAppHibernationService$Stub;
.source "AppHibernationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/apphibernation/AppHibernationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppHibernationServiceStub"
.end annotation


# instance fields
.field final mService:Lcom/android/server/apphibernation/AppHibernationService;


# direct methods
.method constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;)V
    .locals 0

    invoke-direct {p0}, Landroid/apphibernation/IAppHibernationService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-static {v0, p2}, Lcom/android/server/apphibernation/AppHibernationService;->access$100(Lcom/android/server/apphibernation/AppHibernationService;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getHibernatingPackagesForUser(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->getHibernatingPackagesForUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isHibernatingForUser(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1}, Lcom/android/server/apphibernation/AppHibernationService;->isHibernatingGlobally(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/apphibernation/AppHibernationShellCommand;

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-direct {v0, v1}, Lcom/android/server/apphibernation/AppHibernationShellCommand;-><init>(Lcom/android/server/apphibernation/AppHibernationService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/apphibernation/AppHibernationShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public setHibernatingForUser(Ljava/lang/String;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingForUser(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$AppHibernationServiceStub;->mService:Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/apphibernation/AppHibernationService;->setHibernatingGlobally(Ljava/lang/String;Z)V

    return-void
.end method
