.class public final Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;
.super Ljava/lang/Object;
.source "ControlViewHolder.kt"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/ControlViewHolder$Companion;->findBehaviorClass(ILandroid/service/controls/templates/ControlTemplate;I)Ljava/util/function/Supplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;->INSTANCE:Lcom/android/systemui/controls/ui/ControlViewHolder$Companion$findBehaviorClass$5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/systemui/controls/ui/ToggleBehavior;

    invoke-direct {p0}, Lcom/android/systemui/controls/ui/ToggleBehavior;-><init>()V

    return-object p0
.end method
