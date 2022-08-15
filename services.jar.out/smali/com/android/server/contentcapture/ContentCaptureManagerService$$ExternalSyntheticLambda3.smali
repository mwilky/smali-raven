.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-static {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->$r8$lambda$AUQpV4rFj28-A8SQEhydAfHG1uY(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V

    return-void
.end method
