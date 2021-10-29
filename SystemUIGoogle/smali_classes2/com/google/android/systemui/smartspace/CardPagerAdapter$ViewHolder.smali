.class Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CardPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/CardPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public final card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

.field public final position:I

.field public target:Landroid/app/smartspace/SmartspaceTarget;


# direct methods
.method constructor <init>(ILcom/google/android/systemui/smartspace/BcSmartspaceCard;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->position:I

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$ViewHolder;->target:Landroid/app/smartspace/SmartspaceTarget;

    return-void
.end method
