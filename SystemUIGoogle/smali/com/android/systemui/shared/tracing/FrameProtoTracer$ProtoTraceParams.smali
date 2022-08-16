.class public interface abstract Lcom/android/systemui/shared/tracing/FrameProtoTracer$ProtoTraceParams;
.super Ljava/lang/Object;
.source "FrameProtoTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/tracing/FrameProtoTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProtoTraceParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getProtoBytes(Ljava/lang/Object;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)[B"
        }
    .end annotation
.end method

.method public abstract getProtoSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)I"
        }
    .end annotation
.end method

.method public abstract serializeEncapsulatingProto(Ljava/lang/Object;Ljava/util/Queue;)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Ljava/util/Queue<",
            "TT;>;)[B"
        }
    .end annotation
.end method
