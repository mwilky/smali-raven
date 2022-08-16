.class public final Lcom/google/android/systemui/columbus/ContentResolverWrapper;
.super Ljava/lang/Object;
.source "ContentResolverWrapper.kt"


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ContentResolverWrapper;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method
