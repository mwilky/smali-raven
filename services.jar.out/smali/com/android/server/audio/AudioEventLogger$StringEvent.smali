.class public Lcom/android/server/audio/AudioEventLogger$StringEvent;
.super Lcom/android/server/audio/AudioEventLogger$Event;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringEvent"
.end annotation


# instance fields
.field public final mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/audio/AudioEventLogger$Event;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioEventLogger$StringEvent;->mMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioEventLogger$StringEvent;->mMsg:Ljava/lang/String;

    return-object p0
.end method
