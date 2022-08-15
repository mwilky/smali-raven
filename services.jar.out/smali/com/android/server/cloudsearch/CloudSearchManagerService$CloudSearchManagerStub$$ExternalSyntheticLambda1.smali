.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/app/cloudsearch/SearchResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$2:Landroid/app/cloudsearch/SearchResponse;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$0:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub$$ExternalSyntheticLambda1;->f$2:Landroid/app/cloudsearch/SearchResponse;

    check-cast p1, Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/cloudsearch/CloudSearchManagerService$CloudSearchManagerStub;->$r8$lambda$yCeQABnQAVCSQDM8EZefIhzQzqU(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;Lcom/android/server/cloudsearch/CloudSearchPerUserService;)V

    return-void
.end method
