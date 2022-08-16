.class public final Lcom/google/android/systemui/smartspace/filters/DreamTargetFilter;
.super Ljava/lang/Object;
.source "DreamTargetFilter.kt"

# interfaces
.implements Lcom/android/systemui/smartspace/SmartspaceTargetFilter;


# instance fields
.field public final lockscreenFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/smartspace/SmartspaceTargetFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/filters/DreamTargetFilter;->lockscreenFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/filters/DreamTargetFilter;->lockscreenFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    invoke-interface {p0, p1}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter;->addListener(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$filterListener$1;)V

    return-void
.end method

.method public final filterSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/filters/DreamTargetFilter;->lockscreenFilter:Lcom/android/systemui/smartspace/SmartspaceTargetFilter;

    invoke-interface {p0, p1}, Lcom/android/systemui/smartspace/SmartspaceTargetFilter;->filterSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
