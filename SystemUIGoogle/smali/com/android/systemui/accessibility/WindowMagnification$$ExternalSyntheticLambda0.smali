.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;

    invoke-static {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnification;->$r8$lambda$xAKD3X5_TM7cBvKz_fkVSOLulqo(ILcom/android/systemui/accessibility/WindowMagnificationAnimationController;)V

    return-void
.end method
