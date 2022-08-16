.class public abstract Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.super Ljava/lang/Object;
.source "AnimatableProperty.java"


# static fields
.field public static final SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0b07ae

    const v3, 0x7f0b07ad

    const v4, 0x7f0b07ac

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0b07ab

    const v3, 0x7f0b07aa

    const v4, 0x7f0b07a9

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0b057d

    const v3, 0x7f0b057c

    const v4, 0x7f0b057e

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    const v2, 0x7f0b0581

    const v3, 0x7f0b0580

    const v4, 0x7f0b0582

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnimationEndTag()I
.end method

.method public abstract getAnimationStartTag()I
.end method

.method public abstract getAnimatorTag()I
.end method

.method public abstract getProperty()Landroid/util/Property;
.end method
