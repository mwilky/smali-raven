.class public abstract Lcom/android/systemui/statusbar/window/StatusBarWindowModule;
.super Ljava/lang/Object;
.source "StatusBarWindowModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/window/StatusBarWindowModule;->Companion:Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;

    return-void
.end method

.method public static final providesStatusBarWindowView(Landroid/view/LayoutInflater;)Lcom/android/systemui/statusbar/window/StatusBarWindowView;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/window/StatusBarWindowModule;->Companion:Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowModule$Companion;->providesStatusBarWindowView(Landroid/view/LayoutInflater;)Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    move-result-object p0

    return-object p0
.end method
