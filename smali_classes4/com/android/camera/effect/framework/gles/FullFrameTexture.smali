.class public Lcom/android/camera/effect/framework/gles/FullFrameTexture;
.super Lcom/android/camera/effect/framework/gles/FrameTexture;
.source "FullFrameTexture.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\nvec2 texCoord = vTextureCoord;\ntexCoord.y = 1.0 - texCoord.y;\nvec4 ret =  texture2D(sTexture, texCoord);\ngl_FragColor = ret;\n}"

.field private static final VERTEXT_SHADER:Ljava/lang/String; = "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"


# instance fields
.field private final FULL_QUAD_COORDINATES:[B

.field private fullQuadVertices:Ljava/nio/ByteBuffer;

.field private final orientationMatrix:[F

.field private shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

.field private final transformMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/framework/gles/FrameTexture;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->FULL_QUAD_COORDINATES:[B

    const/16 v1, 0x10

    new-array v2, v1, [F

    .line 3
    iput-object v2, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->orientationMatrix:[F

    new-array v1, v1, [F

    .line 4
    iput-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->transformMatrix:[F

    .line 5
    iget-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    .line 7
    :cond_0
    new-instance v1, Lcom/android/camera/effect/framework/gles/ShaderProgram;

    invoke-direct {v1}, Lcom/android/camera/effect/framework/gles/ShaderProgram;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v2, "uniform mat4 uOrientationM;\nuniform mat4 uTransformM;\nattribute vec2 aPosition;\nvarying vec2 vTextureCoord;\nvoid main() {\ngl_Position = vec4(aPosition, 0.0, 1.0);\nvTextureCoord = (uTransformM * ((uOrientationM * gl_Position + 1.0) * 0.5)).xy;}"

    const-string v3, "precision mediump float;\nuniform sampler2D sTexture;\nvarying vec2 vTextureCoord;\nvoid main() {\nvec2 texCoord = vTextureCoord;\ntexCoord.y = 1.0 - texCoord.y;\nvec4 ret =  texture2D(sTexture, texCoord);\ngl_FragColor = ret;\n}"

    .line 8
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->create(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->fullQuadVertices:Ljava/nio/ByteBuffer;

    .line 10
    iget-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->FULL_QUAD_COORDINATES:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object v2, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->orientationMatrix:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 12
    iget-object p0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->transformMatrix:[F

    invoke-static {p0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
    .end array-data
.end method

.method private renderQuad(I)V
    .locals 6

    .line 1
    iget-object v5, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->fullQuadVertices:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1400

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 2
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p0, 0x5

    const/4 p1, 0x0

    const/4 v0, 0x4

    .line 3
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public draw(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    invoke-virtual {v0}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->use()V

    const v0, 0x84c0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 3
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v0, "uOrientationM"

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v1, "uTransformM"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->orientationMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->transformMatrix:[F

    invoke-static {v0, v2, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    const-string v0, "aPosition"

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->getAttributeLocation(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->renderQuad(I)V

    .line 9
    iget-object p0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    invoke-virtual {p0}, Lcom/android/camera/effect/framework/gles/ShaderProgram;->unUse()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->shader:Lcom/android/camera/effect/framework/gles/ShaderProgram;

    .line 2
    iput-object v0, p0, Lcom/android/camera/effect/framework/gles/FullFrameTexture;->fullQuadVertices:Ljava/nio/ByteBuffer;

    return-void
.end method
