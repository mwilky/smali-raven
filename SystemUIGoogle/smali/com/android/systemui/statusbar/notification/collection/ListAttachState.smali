.class public final Lcom/android/systemui/statusbar/notification/collection/ListAttachState;
.super Ljava/lang/Object;
.source "ListAttachState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;


# instance fields
.field private excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

.field private parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

.field private promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

.field private section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

.field private suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->Companion:Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;-><init>(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;)V

    return-void
.end method

.method public static final create()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->Companion:Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/ListAttachState$Companion;->create()Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clone(Lcom/android/systemui/statusbar/notification/collection/ListAttachState;)V
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->clone(Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getExcludingFilter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    return-object p0
.end method

.method public final getParent()Lcom/android/systemui/statusbar/notification/collection/GroupEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    return-object p0
.end method

.method public final getPromoter()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    return-object p0
.end method

.method public final getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    return-object p0
.end method

.method public final getSuppressedChanges()Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;->reset()V

    return-void
.end method

.method public final setExcludingFilter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    return-void
.end method

.method public final setParent(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    return-void
.end method

.method public final setPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    return-void
.end method

.method public final setSection(Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListAttachState(parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->parent:Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", section="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->section:Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", excludingFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->excludingFilter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promoter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->promoter:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", suppressedChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/ListAttachState;->suppressedChanges:Lcom/android/systemui/statusbar/notification/collection/SuppressedAttachState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
