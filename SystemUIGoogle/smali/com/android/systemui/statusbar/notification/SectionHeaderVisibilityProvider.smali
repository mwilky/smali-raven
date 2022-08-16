.class public final Lcom/android/systemui/statusbar/notification/SectionHeaderVisibilityProvider;
.super Ljava/lang/Object;
.source "SectionHeaderVisibilityProvider.kt"


# instance fields
.field public neverShowSectionHeaders:Z

.field public sectionHeadersVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SectionHeaderVisibilityProvider;->neverShowSectionHeaders:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SectionHeaderVisibilityProvider;->sectionHeadersVisible:Z

    return-void
.end method
