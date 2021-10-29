.class public Lorg/tensorflow/lite/nnapi/NnApiDelegate;
.super Ljava/lang/Object;
.source "NnApiDelegate.java"

# interfaces
.implements Lorg/tensorflow/lite/Delegate;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;
    }
.end annotation


# instance fields
.field private delegateHandle:J


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;

    invoke-direct {v0}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;-><init>()V

    invoke-direct {p0, v0}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;-><init>(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)V

    return-void
.end method

.method public constructor <init>(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()V

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$000(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)I

    move-result v0

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$100(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$200(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$300(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$400(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$400(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    :goto_0
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$500(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$500(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$500(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v6, v7

    :cond_3
    :goto_2
    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$600(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {p1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;->access$600(Lorg/tensorflow/lite/nnapi/NnApiDelegate$Options;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    move v7, p1

    :cond_4
    invoke-static/range {v0 .. v7}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->createDelegate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->delegateHandle:J

    return-void
.end method

.method private static native createDelegate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)J
.end method

.method private static native deleteDelegate(J)V
.end method


# virtual methods
.method public close()V
    .locals 5

    iget-wide v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->delegateHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->deleteDelegate(J)V

    iput-wide v2, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->delegateHandle:J

    :cond_0
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    iget-wide v0, p0, Lorg/tensorflow/lite/nnapi/NnApiDelegate;->delegateHandle:J

    return-wide v0
.end method
