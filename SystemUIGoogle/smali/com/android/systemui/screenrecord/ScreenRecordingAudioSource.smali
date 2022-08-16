.class public final enum Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
.super Ljava/lang/Enum;
.source "ScreenRecordingAudioSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

.field public static final enum NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->NONE:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    new-instance v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v3, 0x1

    const-string v4, "INTERNAL"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    new-instance v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v5, 0x2

    const-string v6, "MIC"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    new-instance v6, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v7, 0x3

    const-string v8, "MIC_AND_INTERNAL"

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->MIC_AND_INTERNAL:Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->$VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
    .locals 1

    const-class v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;
    .locals 1

    sget-object v0, Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->$VALUES:[Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    invoke-virtual {v0}, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/screenrecord/ScreenRecordingAudioSource;

    return-object v0
.end method
