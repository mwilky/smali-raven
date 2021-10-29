.class public final synthetic Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/assist/OpaLayout;

.field public final synthetic f$1:Landroid/view/View$OnLongClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/assist/OpaLayout;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/OpaLayout;

    iput-object p2, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda0;->f$1:Landroid/view/View$OnLongClickListener;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/assist/OpaLayout;

    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaLayout$$ExternalSyntheticLambda0;->f$1:Landroid/view/View$OnLongClickListener;

    invoke-static {v0, p0, p1}, Lcom/google/android/systemui/assist/OpaLayout;->$r8$lambda$DEu070lpdkATNDJTv0D3bf-IGzA(Lcom/google/android/systemui/assist/OpaLayout;Landroid/view/View$OnLongClickListener;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
