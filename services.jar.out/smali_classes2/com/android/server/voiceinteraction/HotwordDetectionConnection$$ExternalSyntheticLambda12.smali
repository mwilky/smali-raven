.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda12;->f$0:I

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->lambda$updateServiceUidForAudioPolicy$13(I)V

    return-void
.end method
