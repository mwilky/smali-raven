.class public Lcom/android/systemui/media/MediaBrowserFactory;
.super Ljava/lang/Object;
.source "MediaBrowserFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaBrowserFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)Landroid/media/browse/MediaBrowser;
    .locals 1

    new-instance v0, Landroid/media/browse/MediaBrowser;

    iget-object p0, p0, Lcom/android/systemui/media/MediaBrowserFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method
