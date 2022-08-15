.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/cloudsearch/SearchRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/app/cloudsearch/SearchRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/SearchRequest;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda0;->f$0:Landroid/app/cloudsearch/SearchRequest;

    check-cast p1, Landroid/service/cloudsearch/ICloudSearchService;

    invoke-static {p0, p1}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->$r8$lambda$02G19LWLeZSN7LZu7AiJ0x1P5ew(Landroid/app/cloudsearch/SearchRequest;Landroid/service/cloudsearch/ICloudSearchService;)V

    return-void
.end method
