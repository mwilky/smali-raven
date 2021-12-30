.class Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/toolbox/NetworkImageView;

.field final synthetic val$isInLayoutPass:Z


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->this$0:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->val$isInLayoutPass:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
