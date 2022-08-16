.class public final Lcom/android/systemui/people/PeopleStoryIconFactory;
.super Ljava/lang/Object;
.source "PeopleStoryIconFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;
    }
.end annotation


# instance fields
.field public mAccentColor:I

.field public mContext:Landroid/content/Context;

.field public mDensity:F

.field public final mIconBitmapSize:I

.field public mIconSize:F

.field public mImportantConversationColor:I

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10302e3

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    iput-object p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    const p2, 0x7f0600e6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    const p2, 0x1120025

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    iput-object p1, p0, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method
