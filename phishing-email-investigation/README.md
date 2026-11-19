# Practice 01 — Phishing Email Investigation

**Track:** SOC Analyst Training  
**Classification:** Phishing  
**Environment:** Fictional email simulation  
**Status:** Completed

## 1. Scenario

An employee receives an email claiming to be from Microsoft. The message warns that the employee's account will be disabled unless they verify it within 30 minutes. It includes a verification link and an unexpected ZIP attachment.

This is a simulated training sample. No real sender, recipient, website, or attachment was contacted or opened.

## 2. Email Evidence

| Field | Observed value |
|---|---|
| Display name | Microsoft Security Team |
| Sender | `security@micros0ft-support.com` |
| Recipient | `employee@company.example` |
| Subject | `URGENT: Your Microsoft Account Will Be Disabled` |
| Link | `https://microsoft-security.example.com/verify` |
| Attachment | `Account_Security_Update.zip` |
| Claimed deadline | 30 minutes |

## 3. Indicators Identified

### Finding 1 — Lookalike sender domain

- **Evidence:** `micros0ft-support.com` uses the number `0` in place of the letter `o` in “Microsoft.”
- **Technique:** Lookalike-domain impersonation / typosquatting.
- **Assessment:** The sender address does not establish that the message came from Microsoft. The domain should be independently verified.

### Finding 2 — Urgent subject line

- **Evidence:** The subject begins with `URGENT` in all capital letters and threatens account disablement.
- **Technique:** Urgency and fear-based social engineering.
- **Assessment:** Alarmist wording can pressure a recipient to act before verifying the request.

### Finding 3 — Artificial verification deadline

- **Evidence:** The message demands verification within 30 minutes.
- **Technique:** Time pressure.
- **Assessment:** The deadline is presented without independent evidence or a trustworthy support process. Its presence is suspicious; the length of a deadline alone does not prove malicious intent.

### Finding 4 — Untrusted link hostname

- **Evidence:** The link hostname is `microsoft-security.example.com`, not `microsoft.com`.
- **Technique:** Brand impersonation through a misleading URL.
- **Assessment:** The hostname does not establish that the destination is controlled by Microsoft. The `.example.com` domain is reserved for documentation and examples, so this URL is a placeholder in the simulation—not a live phishing site.

### Finding 5 — Unexpected ZIP attachment

- **Evidence:** The message includes `Account_Security_Update.zip`.
- **Technique / risk:** An archive can contain scripts, executables, or other files that may be malicious.
- **Assessment:** A ZIP file is not automatically malicious, but an unexpected attachment in an account-warning email should be treated as suspicious. Do not open it; submit it through the organization's approved security-analysis process.

## 4. Analyst Decision

**Verdict: PHISHING**

The combined indicators—lookalike sender domain, alarmist subject, unexplained deadline, misleading link hostname, and unexpected archive—support classifying this simulated email as phishing.

This is a training assessment based on the supplied sample. No live infrastructure, message headers, DNS records, or attachment contents were examined, so the exercise does not establish attribution or confirm malware.

## 5. Recommended Response

1. Do not click the link or reply to the sender.
2. Do not open or extract the ZIP attachment.
3. Report the message using the organization's approved phishing-reporting process.
4. Preserve the original email and full headers for investigation.
5. If the recipient already clicked the link or entered credentials, notify the security team immediately and follow the organization's incident-response procedure.

## 6. Investigation Notes

The exercise demonstrates how to identify common social-engineering indicators and distinguish suspicious evidence from confirmed facts. A careful analyst avoids treating a suspicious attachment as confirmed malware or a simulated URL as a live malicious site.

## 7. Skills Practiced

- Email sender and domain inspection
- Recognition of lookalike domains
- Identification of urgency and fear-based language
- URL hostname analysis
- Safe handling of unexpected attachments
- Evidence-based classification and incident reporting

---

*Educational exercise using fictional data. No real accounts, systems, links, or files were tested.*
