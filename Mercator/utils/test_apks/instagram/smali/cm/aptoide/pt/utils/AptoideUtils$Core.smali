.class public Lcm/aptoide/pt/utils/AptoideUtils$Core;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Core"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Core"

.field public static openGLExtensions:Ljava/lang/String;

.field public static supportedOpenGLExtensions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GL_OES_compressed_ETC1_RGB8_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GL_OES_compressed_paletted_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "GL_AMD_compressed_3DC_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GL_AMD_compressed_ATC_texture"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "GL_EXT_texture_compression_latc"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GL_EXT_texture_compression_dxt1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GL_EXT_texture_compression_s3tc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GL_ATI_texture_compression_atitc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "GL_IMG_texture_compression_pvrtc"

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$Core;->supportedOpenGLExtensions:[Ljava/lang/String;

    .line 113
    const-string v0, ""

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$Core;->openGLExtensions:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOpenGLExtensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 174
    .line 175
    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$Core;->openGLExtensions:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    move-object v1, p0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 176
    sget-object v6, Lcm/aptoide/pt/utils/AptoideUtils$Core;->supportedOpenGLExtensions:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&myGLTex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_1
    const/4 v1, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 175
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 185
    :cond_2
    return-object v1
.end method

.method public static filters(Z)Ljava/lang/String;
    .locals 8

    .prologue
    .line 139
    if-nez p0, :cond_0

    .line 140
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getSdkVer()I

    move-result v1

    .line 144
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getScreenSize()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getGlEsVer()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getDensityDpi()I

    move-result v4

    .line 149
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getAbis()Ljava/lang/String;

    move-result-object v5

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v7, "alien_jolla_bionic"

    .line 152
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "apkdwn=myapp&"

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "maxSdk="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&maxScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&maxGles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&myCPU="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&myDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$Core;->addOpenGLExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, ""

    .line 167
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, "*"

    .line 168
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "_"

    .line 169
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    .line 170
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static getDefaultVername()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    const-string v0, ""

    .line 130
    :try_start_0
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aptoide-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVerCode()I
    .locals 3

    .prologue
    .line 116
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 118
    :try_start_0
    # getter for: Lcm/aptoide/pt/utils/AptoideUtils;->context:Landroid/content/Context;
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils;->access$000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 119
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "Core"

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    const/4 v0, -0x1

    goto :goto_0
.end method
