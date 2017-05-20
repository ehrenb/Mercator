.class public Lcm/aptoide/pt/database/realm/Installed;
.super Lio/realm/ad;
.source "Installed.java"

# interfaces
.implements Lio/realm/n;


# static fields
.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final STORE_NAME:Ljava/lang/String; = "storeName"

.field public static final VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final VERSION_NAME:Ljava/lang/String; = "versionName"


# instance fields
.field private icon:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private storeName:Ljava/lang/String;

.field private systemApp:Z

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcm/aptoide/pt/database/realm/Installed;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lio/realm/ad;-><init>()V

    .line 48
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getApkIconPath(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setIcon(Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->getApkLabel(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setName(Ljava/lang/String;)V

    .line 50
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setPackageName(Ljava/lang/String;)V

    .line 51
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setVersionCode(I)V

    .line 52
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setVersionName(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p2}, Lcm/aptoide/pt/database/realm/Installed;->setStoreName(Ljava/lang/String;)V

    .line 54
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setSystemApp(Z)V

    .line 55
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 56
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    .line 57
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$AlgorithmU;->computeSha1WithColon([B)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/database/realm/Installed;->setSignature(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 54
    goto :goto_0
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$icon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$packageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$signature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$storeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$versionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$versionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcm/aptoide/pt/database/realm/Installed;->realmGet$systemApp()Z

    move-result v0

    return v0
.end method

.method public realmGet$icon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Installed;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Installed;->name:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$packageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Installed;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$signature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Installed;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$storeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Installed;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$systemApp()Z
    .locals 1

    iget-boolean v0, p0, Lcm/aptoide/pt/database/realm/Installed;->systemApp:Z

    return v0
.end method

.method public realmGet$versionCode()I
    .locals 1

    iget v0, p0, Lcm/aptoide/pt/database/realm/Installed;->versionCode:I

    return v0
.end method

.method public realmGet$versionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcm/aptoide/pt/database/realm/Installed;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public realmSet$icon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Installed;->icon:Ljava/lang/String;

    return-void
.end method

.method public realmSet$name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Installed;->name:Ljava/lang/String;

    return-void
.end method

.method public realmSet$packageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Installed;->packageName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$signature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Installed;->signature:Ljava/lang/String;

    return-void
.end method

.method public realmSet$storeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Installed;->storeName:Ljava/lang/String;

    return-void
.end method

.method public realmSet$systemApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcm/aptoide/pt/database/realm/Installed;->systemApp:Z

    return-void
.end method

.method public realmSet$versionCode(I)V
    .locals 0

    iput p1, p0, Lcm/aptoide/pt/database/realm/Installed;->versionCode:I

    return-void
.end method

.method public realmSet$versionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcm/aptoide/pt/database/realm/Installed;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$icon(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$name(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$packageName(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$signature(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public setStoreName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$storeName(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setSystemApp(Z)V
    .locals 0

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$systemApp(Z)V

    .line 131
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$versionCode(I)V

    .line 95
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/database/realm/Installed;->realmSet$versionName(Ljava/lang/String;)V

    .line 103
    return-void
.end method
