.class public final Lcom/android/systemui/controls/CustomIconCache;
.super Ljava/lang/Object;
.source "CustomIconCache.kt"


# instance fields
.field public final cache:Ljava/util/LinkedHashMap;

.field public currentComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/controls/CustomIconCache;->cache:Ljava/util/LinkedHashMap;

    return-void
.end method
