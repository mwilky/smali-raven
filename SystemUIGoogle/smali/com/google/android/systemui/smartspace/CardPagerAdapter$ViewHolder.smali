.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CardPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/CardPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public final mCard:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

.field public final mLegacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

.field public final mPosition:I

.field public mTarget:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method public constructor <init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->mPosition:I

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->mLegacyCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->mTarget:Landroid/app/smartspace/SmartspaceTarget;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->mCard:Lcom/google/android/systemui/smartspace/uitemplate/BaseTemplateCard;

    return-void
.end method
