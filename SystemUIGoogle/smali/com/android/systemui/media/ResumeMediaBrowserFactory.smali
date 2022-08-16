.class public final Lcom/android/systemui/media/ResumeMediaBrowserFactory;
.super Ljava/lang/Object;
.source "ResumeMediaBrowserFactory.java"


# instance fields
.field public final mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

.field public final mContext:Landroid/content/Context;

.field public final mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/media/MediaBrowserFactory;Lcom/android/systemui/media/ResumeMediaBrowserLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iput-object p3, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    return-void
.end method
