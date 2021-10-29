.class Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;
.super Ljava/lang/Object;
.source "FeatureFlagReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/flags/FeatureFlagReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedFlag"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;->value:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/android/systemui/flags/FeatureFlagReader$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/flags/FeatureFlagReader$CachedFlag;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
