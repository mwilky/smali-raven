.class public final Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "MediaHost_MediaHostStateHolder_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    invoke-direct {v0}, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/media/MediaHost_MediaHostStateHolder_Factory;

    return-void
.end method
