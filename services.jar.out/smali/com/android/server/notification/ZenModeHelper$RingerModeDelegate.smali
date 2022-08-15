.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 1

    or-int/lit8 p1, p1, 0x26

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    or-int/lit16 p0, p1, 0x818

    goto :goto_0

    :cond_0
    and-int/lit16 p0, p1, -0x819

    :goto_0
    return p0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 10

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p5

    :goto_0
    if-ne p4, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, p5

    :goto_1
    const/4 v3, -0x1

    if-eqz p2, :cond_4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v0, :cond_3

    move v2, p2

    :goto_2
    move v5, p5

    goto :goto_5

    :cond_3
    :goto_3
    move v2, p2

    :goto_4
    move v5, v3

    goto :goto_5

    :cond_4
    if-eqz v1, :cond_6

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p5, :cond_5

    move p5, v0

    goto :goto_2

    :cond_5
    move p5, v3

    goto :goto_2

    :cond_6
    move v2, p4

    goto :goto_4

    :goto_5
    if-eq v5, v3, :cond_7

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "ringerModeExternal"

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_7
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v2
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_1

    if-ne v4, v1, :cond_2

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_2
    const/4 v3, -0x1

    if-eqz p2, :cond_5

    const/4 p5, 0x2

    if-eq p2, v1, :cond_3

    if-eq p2, p5, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v5, p5, :cond_7

    const/4 p5, 0x3

    if-eq v5, p5, :cond_7

    if-ne v5, v1, :cond_4

    iget-object p5, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p5}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result p5

    if-eqz p5, :cond_4

    goto :goto_2

    :cond_4
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz p5, :cond_8

    move p5, v0

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_8

    iget-boolean p5, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz p5, :cond_8

    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_7
    :goto_2
    move p5, p2

    goto :goto_5

    :cond_8
    :goto_3
    move p5, p2

    :goto_4
    move v0, v3

    :goto_5
    if-eq v0, v3, :cond_9

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "ringerModeInternal"

    move v5, v0

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_9
    if-nez v2, :cond_a

    if-ne v0, v3, :cond_a

    if-eq p4, p5, :cond_b

    :cond_a
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    :cond_b
    return p5
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ZenModeHelper"

    return-object p0
.end method
