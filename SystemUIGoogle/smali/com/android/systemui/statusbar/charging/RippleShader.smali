.class public final Lcom/android/systemui/statusbar/charging/RippleShader;
.super Landroid/graphics/RuntimeShader;
.source "RippleShader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/charging/RippleShader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/charging/RippleShader$Companion;


# instance fields
.field public color:I

.field public progress:F

.field public radius:F

.field public shouldFadeOutRipple:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/charging/RippleShader$Companion;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/charging/RippleShader$Companion;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/charging/RippleShader;->Companion:Lcom/android/systemui/statusbar/charging/RippleShader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "uniform vec2 in_origin;\n                uniform float in_progress;\n                uniform float in_maxRadius;\n                uniform float in_time;\n                uniform float in_distort_radial;\n                uniform float in_distort_xy;\n                uniform float in_radius;\n                uniform float in_fadeSparkle;\n                uniform float in_fadeCircle;\n                uniform float in_fadeRing;\n                uniform float in_blur;\n                uniform float in_pixelDensity;\n                layout(color) uniform vec4 in_color;\n                uniform float in_sparkle_strength;float triangleNoise(vec2 n) {\n                    n  = fract(n * vec2(5.3987, 5.4421));\n                    n += dot(n.yx, n.xy + vec2(21.5351, 14.3137));\n                    float xy = n.x * n.y;\n                    return fract(xy * 95.4307) + fract(xy * 75.04961) - 1.0;\n                }\n                const float PI = 3.1415926535897932384626;\n\n                float threshold(float v, float l, float h) {\n                  return step(l, v) * (1.0 - step(h, v));\n                }\n\n                float sparkles(vec2 uv, float t) {\n                  float n = triangleNoise(uv);\n                  float s = 0.0;\n                  for (float i = 0; i < 4; i += 1) {\n                    float l = i * 0.01;\n                    float h = l + 0.1;\n                    float o = smoothstep(n - l, h, n);\n                    o *= abs(sin(PI * o * (t + 0.55 * i)));\n                    s += o;\n                  }\n                  return s;\n                }\n\n                float softCircle(vec2 uv, vec2 xy, float radius, float blur) {\n                  float blurHalf = blur * 0.5;\n                  float d = distance(uv, xy);\n                  return 1. - smoothstep(1. - blurHalf, 1. + blurHalf, d / radius);\n                }\n\n                float softRing(vec2 uv, vec2 xy, float radius, float blur) {\n                  float thickness_half = radius * 0.25;\n                  float circle_outer = softCircle(uv, xy, radius + thickness_half, blur);\n                  float circle_inner = softCircle(uv, xy, radius - thickness_half, blur);\n                  return circle_outer - circle_inner;\n                }\n\n                vec2 distort(vec2 p, vec2 origin, float time,\n                    float distort_amount_radial, float distort_amount_xy) {\n                    float2 distance = origin - p;\n                    float angle = atan(distance.y, distance.x);\n                    return p + vec2(sin(angle * 8 + time * 0.003 + 1.641),\n                                    cos(angle * 5 + 2.14 + time * 0.00412)) * distort_amount_radial\n                             + vec2(sin(p.x * 0.01 + time * 0.00215 + 0.8123),\n                                    cos(p.y * 0.01 + time * 0.005931)) * distort_amount_xy;\n                }vec4 main(vec2 p) {\n                    vec2 p_distorted = distort(p, in_origin, in_time, in_distort_radial,\n                        in_distort_xy);\n\n                    // Draw shapes\n                    float sparkleRing = softRing(p_distorted, in_origin, in_radius, in_blur);\n                    float sparkle = sparkles(p - mod(p, in_pixelDensity * 0.8), in_time * 0.00175)\n                        * sparkleRing * in_fadeSparkle;\n                    float circle = softCircle(p_distorted, in_origin, in_radius * 1.2, in_blur);\n                    float rippleAlpha = max(circle * in_fadeCircle,\n                        softRing(p_distorted, in_origin, in_radius, in_blur) * in_fadeRing) * 0.45;\n                    vec4 ripple = in_color * rippleAlpha;\n                    return mix(ripple, vec4(sparkle), sparkle * in_sparkle_strength);\n                }"

    invoke-direct {p0, v0}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    const v0, 0xffffff

    iput v0, p0, Lcom/android/systemui/statusbar/charging/RippleShader;->color:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/charging/RippleShader;->shouldFadeOutRipple:Z

    return-void
.end method


# virtual methods
.method public final setColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/charging/RippleShader;->color:I

    const-string v0, "in_color"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public final setProgress(F)V
    .locals 6

    iput p1, p0, Lcom/android/systemui/statusbar/charging/RippleShader;->progress:F

    const-string v0, "in_progress"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float v1, v0, p1

    mul-float v2, v1, v1

    mul-float/2addr v2, v1

    sub-float v1, v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/charging/RippleShader;->radius:F

    mul-float/2addr v1, v2

    const-string v2, "in_radius"

    invoke-virtual {p0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    const/high16 v1, 0x3fa00000    # 1.25f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    const-string v2, "in_blur"

    invoke-virtual {p0, v2, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    const/4 v1, 0x0

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2, p1}, Lcom/android/systemui/statusbar/charging/RippleShader$Companion;->access$subProgress(FFF)F

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4, p1}, Lcom/android/systemui/statusbar/charging/RippleShader$Companion;->access$subProgress(FFF)F

    move-result v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/charging/RippleShader;->shouldFadeOutRipple:Z

    if-eqz v5, :cond_0

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v5, p1}, Lcom/android/systemui/statusbar/charging/RippleShader$Companion;->access$subProgress(FFF)F

    move-result v1

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v5, v4, p1}, Lcom/android/systemui/statusbar/charging/RippleShader$Companion;->access$subProgress(FFF)F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sub-float v3, v0, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const-string v4, "in_fadeSparkle"

    invoke-virtual {p0, v4, v3}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    sub-float v1, v0, v1

    const-string v3, "in_fadeCircle"

    invoke-virtual {p0, v3, v1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    sub-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const-string v0, "in_fadeRing"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method
